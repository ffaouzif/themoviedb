<div class="container mx-auto px-4 py-6">
    @if ($paginator->hasPages())
        <ul class="pager">
          {{ $paginator->appends(Request::except('page'))->links() }}
        </ul>
    @endif
</div>
