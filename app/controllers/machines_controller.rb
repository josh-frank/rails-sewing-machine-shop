class MachinesController < ApplicationController
  
  def index
    @all_machines = Machine.all
  end

  def show
    @this_machine = Machine.find( params[ :id ] )
  end

  def new
    @new_machine = Machine.new
  end

  def create
    new_machine = Machine.create( brand: params[ :machine ][ :brand ], model: params[ :machine ][ :model ], bobbin: params[ :machine ][ :bobbin ], needle: params[ :machine ][ :needle ] )
    redirect_to machine_path( new_machine )
  end

  def edit
    @machine_to_edit = Machine.find( params[ :id ] )
  end

  def update
    @machine = Machine.find( params[ :id ] )
    @machine.update( machine_params )
    redirect_to machine_path( @machine )
  end

  def destroy
    Machine.destroy( params[ :id ] )
    redirect_to machines_path
  end

  private

  def machine_params
    params.require( :machine ).permit( :brand, :model, :bobbin, :needle )
  end

end
