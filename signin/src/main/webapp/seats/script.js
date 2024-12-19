document.addEventListener('DOMContentLoaded', () => {
    const seatGrid = document.querySelector('.seat-grid');
    const selectedSeats = document.getElementById('selected-seats');
    const totalPrice = document.getElementById('total-price');

    const seatPrice = 150; // Example price
    const totalSeats = 360; // Total number of seats
    const seatsPerRow = 30; // Number of seats in one row
    const bookedSeats = []; // Array to store booked seat IDs

    // Mark the first row as booked
    for (let i = 1; i <= seatsPerRow; i++) {
        bookedSeats.push(i);
    }

    // Generate seat grid
    for (let i = 1; i <= totalSeats; i++) {
        const seat = document.createElement('div');
        seat.classList.add('seat');
        // seat.textContent = i;

        // Mark booked seats
        if (bookedSeats.includes(i)) {
            seat.classList.add('booked');
        }

        // Add click event for selectable seats
        seat.addEventListener('click', () => {
            if (!seat.classList.contains('booked')) {
                seat.classList.toggle('selected');
                updateSummary();
            }
        });

        seatGrid.appendChild(seat);
    }

    // Update summary
    function updateSummary() {
        const selected = document.querySelectorAll('.seat.selected'); // Get all selected seats
        const selectedCount = selected.length; // Get the count of selected seats
        const total = selectedCount * seatPrice; // Calculate total price
    
        // Display the count of selected seats
        selectedSeats.textContent = selectedCount > 0 ? selectedCount : 'None'; // If no seat is selected, show 'None'
        
        // Display the total price
        totalPrice.textContent = total;
    }
});
