<div class="modal-dialog" role="document">
    <div class="modal-content">

        <div class="modal-header">
            <div class="flex justify-end pr-4 pt-2">
                <button @click="showEditModal = false" @keydown.escape.window="showEditModal = false"
                    class="text-3xl leading-none hover:text-gray-300">&times;
                </button>
            </div>
        </div>

        <div class="modal-body px-8 py-8">
            <div class="responsive-container overflow-hidden relative" _style="padding-top: 56.25%">
                <form method="POST" action="{{ route('movies.update', $movie['id']) }}" id="edit-movie">
                    @csrf
                    @method('PUT')
                    <!-- Title -->
                    <div>
                        <label class="block text-sm font-medium text-gray-700" for="title">
                            Title
                        </label>
                        <input type="hidden" value="{{$movie['id']}}" id="movie-id">
                        <input
                            class="bg-gray-800 block w-full mt-1 border-gray-300 rounded-md shadow-sm placeholder:text-gray-400 placeholder:text-right focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50"
                            type="text" name="title" id="title" placeholder="180" value="{{ old('title', $movie['title']) }}">
                        @error('title')
                            <span class="text-red-600 text-sm">
                                {{ $message }}
                            </span>
                        @enderror
                    </div>

                    <!-- Overview -->
                    <div class="mt-4">
                        <label class="block text-sm font-medium text-gray-700" for="overview">
                            Overview
                        </label>
                        <textarea 
                            id="overview"
                            name="overview"
                            class="bg-gray-800 block w-full mt-1 border-gray-300 rounded-md shadow-sm placeholder:text-gray-400 placeholder:text-right focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50"
                            rows="4" placeholder="400"> {{ old('overview', $movie['overview']) }}</textarea>
                        @error('description')
                            <span class="text-red-600 text-sm">
                                {{ $message }}
                            </span>
                        @enderror
                    </div>

                    <div style="display:none"
                        class="alert alert-danger bg-red-100 border-t-4 border-red-100 rounded-b text-teal-900 px-4 py-3 shadow-md my-3"
                        role="alert">
                        <div class="flex">
                            <div>
                                <p class="text-sm">{{ session('message') }}</p>
                            </div>
                        </div>
                    </div>
                    <div class="flex items-center justify-start mt-4">
                        <button type="submit"
                            class="inline-flex items-center px-6 py-2 text-sm font-semibold rounded-md text-sky-100 bg-sky-500 hover:bg-sky-700 focus:outline-none focus:border-gray-900 focus:ring ring-gray-300"
                            id="ajaxSubmit">
                            Update
                        </button>
                    </div>
                </form>

            </div>
        </div>
    </div>
</div>
