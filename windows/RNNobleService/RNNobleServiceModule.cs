using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Noble.Service.RNNobleService
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNNobleServiceModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNNobleServiceModule"/>.
        /// </summary>
        internal RNNobleServiceModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNNobleService";
            }
        }
    }
}
