/// <reference path="../typings/jquery/jquery.d.ts"/>

/// <reference path="../ts/event-helper.js.ts"/>

module Rails {

    export class Application {

        constructor() {
            console.log('Typescript ready.');
            //this.delegater();
        }

        private delegater() {
            var eventHelper = new EventHelper();
            eventHelper.delegates();
        }

    }

    $(()=> {
        new Application();
    });

}
