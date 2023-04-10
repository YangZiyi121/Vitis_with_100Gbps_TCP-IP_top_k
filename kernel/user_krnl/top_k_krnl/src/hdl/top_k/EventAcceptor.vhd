---------------------------------------------------------------------------
--  Copyright 2015 - 2017 Systems Group, ETH Zurich
-- 
--  This hardware module is free software: you can redistribute it and/or
--  modify it under the terms of the GNU General Public License as published
--  by the Free Software Foundation, either version 3 of the License, or
--  (at your option) any later version.
-- 
--  This program is distributed in the hope that it will be useful,
--  but WITHOUT ANY WARRANTY; without even the implied warranty of
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--  GNU General Public License for more details.
-- 
--  You should have received a copy of the GNU General Public License
--  along with this program.  If not, see <http://www.gnu.org/licenses/>.
---------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL ;
USE IEEE.std_logic_arith.ALL;
USE IEEE.std_logic_unsigned.ALL;


entity event_acceptor is
  port (
    clk : in std_logic;
    rst : in std_logic;

    event_valid : in std_logic;
    event_ready : out std_logic;
    event_data  : in std_logic_vector(87 downto 0);

    readreq_valid : out std_logic;
    readreq_ready : in std_logic;
    readreq_data  : out std_logic_vector(31 downto 0);    

    event_out_valid : out std_logic;
    event_out_ready : in std_logic;
    event_out_data : out std_logic_vector(63 downto 0)

);
end event_acceptor;


architecture beh of event_acceptor is

  signal eventValid : std_logic;
  signal eventReady : std_logic;
  signal eventData : std_logic_vector(87 downto 0);


  signal evdataOutEmpty : std_logic;
  signal evdataOutValid : std_logic;
  signal evdataOutReady : std_logic;
  signal evdataOutData : std_logic_vector(63 downto 0);



begin


  eventValid <= event_valid;
  eventData <= event_data;
  event_ready <= eventReady;

  eventReady <= (event_out_ready and readreq_ready);

  event_proc: process (clk)
  begin
    if (clk'event and clk='1') then
      if (rst='1') then
        event_out_valid <= '0';
        readreq_valid <= '0';

      else

        if (readreq_ready='1') then
          readreq_valid <= '0';
        end if;

        if (event_out_ready='1') then 
          event_out_valid <= '0';
        end if;

        if (eventReady='1' and eventData(31 downto 16)/=0) then
          event_out_valid <= eventValid;
          readreq_valid <= eventValid;	  
        end if;

        event_out_data <= eventData(47+32 downto 32) & eventData(15 downto 0);
        readreq_data <= eventData(31 downto 0);

      end if;
    end if;

  end process;

end beh;