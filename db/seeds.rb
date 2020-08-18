# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
seat_payload = {
    ids: [
        {
            id: "1_1",
            labeled: "1",
            booked: false
        },
        {
            id: "1_2",
            labeled: "2",
            booked: false
        },
        {
            id: "1_4",
            labeled: "3",
            booked: false
        },
        {
            id: "1_5",
            labeled: "4",
            booked: false
        },
        {
            id: "2_1",
            labeled: "5",
            booked: false
        },
        {
            id: "2_2",
            labeled: "6",
            booked: false
        },
        {
            id: "2_4",
            labeled: "7",
            booked: false
        },
        {
            id: "2_5",
            labeled: "8",
            booked: false
        },
        {
            id: "3_1",
            labeled: "9",
            booked: false
        },
        {
            id: "3_2",
            labeled: "10",
            booked: false
        },
        {
            id: "3_4",
            labeled: "11",
            booked: false
        },
        {
            id: "3_5",
            labeled: "12",
            booked: false
        },
        {
            id: "4_1",
            labeled: "13",
            booked: false
        },
        {
            id: "4_2",
            labeled: "14",
            booked: false
        },
        {
            id: "5_1",
            labeled: "15",
            booked: false
        },
        {
            id: "5_2",
            labeled: "16",
            booked: false
        },
        {
            id: "5_4",
            labeled: "17",
            booked: false
        },
        {
            id: "5_5",
            labeled: "18",
            booked: false
        },
        {
            id: "6_1",
            labeled: "19",
            booked: false
        },
        {
            id: "6_2",
            labeled: "20",
            booked: false
        },
        {
            id: "6_4",
            labeled: "21",
            booked: false
        },
        {
            id: "6_5",
            labeled: "22",
            booked: false
        },
        {
            id: "7_1",
            labeled: "23",
            booked: false
        },
        {
            id: "7_2",
            labeled: "24",
            booked: false
        },
        {
            id: "7_4",
            labeled: "25",
            booked: false
        },
        {
            id: "7_5",
            labeled: "26",
            booked: false
        },
        {
            id: "8_1",
            labeled: "27",
            booked: false
        },
        {
            id: "8_2",
            labeled: "28",
            booked: false
        },
        {
            id: "8_3",
            labeled: "29",
            booked: false
        },
        {
            id: "8_4",
            labeled: "30",
            booked: false
        },
        {
            id: "8_5",
            labeled: "31",
            booked: false
        },
    ]
}

Seat.create(bus_id: 1, payload: seat_payload)