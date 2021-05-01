using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using WPF_Working_with_Baku_Bus_API.Models;

namespace WPF_Working_with_Baku_Bus_API.Repo
{
    public class BusServices
    {
        public ObservableCollection<Bus> GetBuses()
        {
            string link = @"https://www.bakubus.az/az/ajax/apiNew1";
            dynamic datas = GetDatasWithHttpClient(link);

            ObservableCollection<Bus> buses = new ObservableCollection<Bus>();

            foreach (var item in datas.BUS)
            {
                dynamic bus = item["@attributes"];
                buses.Add(GetBusWithAttribute(bus));
            }

            return buses;
        }
        public List<string> GetBusNumbers()
        {
            return new List<string>
            {
                "All", "M1", "M2", "M3", "1", "2", "3", "5", "6", "7B", "7A", "11", "13", "14", "17", "21", "24", "30", "88", "88A", "125", "175"
            };
        }
        private Bus GetBusWithAttribute(dynamic bus)
        {
            return new Bus
            {
                BUS_ID = bus["BUS_ID"],
                PLATE = bus["PLATE"],
                DRIVER_NAME = bus["DRIVER_NAME"],
                CURRENT_STOP = bus["CURRENT_STOP"],
                PREV_STOP = bus["PREV_STOP"],
                SPEED = bus["SPEED"],
                BUS_MODEL = bus["BUS_MODEL"],
                LATITUDE = bus["LATITUDE"],
                LONGITUDE = bus["LONGITUDE"],
                ROUTE_NAME = bus["ROUTE_NAME"],
                LAST_UPDATE_TIME = bus["LAST_UPDATE_TIME"],
                DISPLAY_ROUTE_CODE = bus["DISPLAY_ROUTE_CODE"],
                SVCOUNT = bus["SVCOUNT"]
            };
        }
        private dynamic GetDatasWithHttpClient(string link)
        {
            HttpClient client = new HttpClient();
            return JsonConvert.DeserializeObject(client.GetAsync(link).Result.Content.ReadAsStringAsync().Result);
        }

        public ObservableCollection<Bus> GetBusesWithBusNumber(ObservableCollection<Bus> allBuses, string busNumber)
        {
            if (busNumber != "All")
            {
                List<Bus> foundBuses = allBuses.Where(bus => bus.DISPLAY_ROUTE_CODE == busNumber).ToList();
                ObservableCollection<Bus> buses = new ObservableCollection<Bus>();


                foundBuses.ForEach(buses.Add);

                return buses;
            }

            return allBuses;
        }

    }
}