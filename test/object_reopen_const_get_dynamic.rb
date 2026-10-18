class FooJob
  def self.perform
    puts 'ran'
  end
end

class Object
  def zzz
    1
  end
end

job = { 'name' => 'FooJob' }
Object.const_get(job['name']).perform

def name_error(&) = yield rescue p($!.message)
miss = { 'name' => 'GhostJob' }
name_error { Object.const_get(miss['name']) }
name_error { Object.const_get("GhostJob") }
