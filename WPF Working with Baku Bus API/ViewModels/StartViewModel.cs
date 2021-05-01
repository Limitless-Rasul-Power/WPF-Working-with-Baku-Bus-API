using Microsoft.Maps.MapControl.WPF;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Configuration;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using WPF_Working_with_Baku_Bus_API.Command;
using WPF_Working_with_Baku_Bus_API.Models;
using WPF_Working_with_Baku_Bus_API.Repo;

namespace WPF_Working_with_Baku_Bus_API.ViewModels
{
    public class StartViewModel : INotifyPropertyChanged
    {        
        private ObservableCollection<Bus> _buses;
        private string _busNumber;

        public StartViewModel()
        {
            string APIKey = ConfigurationManager.AppSettings["BingAPIKEY"];
            Provider = new ApplicationIdCredentialsProvider(APIKey);
            BusServices = new BusServices();
            AllBusesData = BusServices.GetBuses();
            Buses = AllBusesData;

            BusNumbers = BusServices.GetBusNumbers();
            BusNumber = BusNumbers[0];

            SelectionChangedCommand = new RelayCommand(OnSelectionChanged);
        }


        public ApplicationIdCredentialsProvider Provider { get; set; }
        public BusServices BusServices { get; set; }
        public ObservableCollection<Bus> Buses { get { return _buses; } set { _buses = value; OnPropertyChanged(); } }
        public List<string> BusNumbers { get; set; }
        public ObservableCollection<Bus> AllBusesData { get; set; }

        public RelayCommand SelectionChangedCommand { get; set; }        
        
        public string BusNumber
        {
            get { return _busNumber; }
            set { _busNumber = value; OnPropertyChanged(); }
        }



        private void OnSelectionChanged(object data = null)
        {
            Buses = BusServices.GetBusesWithBusNumber(AllBusesData, BusNumber);
        }


        public event PropertyChangedEventHandler PropertyChanged;
        public void OnPropertyChanged([CallerMemberName] string name = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(name));
        }

    }
}