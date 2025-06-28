<?php

namespace Database\Seeders;

use App\Models\User;
use App\Models\Role;
use App\Models\UserRole;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class UserRoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Xóa dữ liệu cũ trong bảng user_roles
        DB::table('user_roles')->truncate();

        // Gán role admin cho user admin
        $admin = User::where('user_name', 'admin')->first();
        $adminRole = Role::where('name', 'admin')->first();
        if ($admin && $adminRole) {
            DB::table('user_roles')->insert([
                'user_id' => $admin->id,
                'role_id' => $adminRole->id,
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        }

        // Gán role manager cho các manager
        $managerRole = Role::where('name', 'manager')->first();
        $managers = User::whereIn('user_name', ['manager1', 'manager2', 'manager3'])->get();
        foreach ($managers as $manager) {
            if ($managerRole) {
                DB::table('user_roles')->insert([
                    'user_id' => $manager->id,
                    'role_id' => $managerRole->id,
                    'created_at' => now(),
                    'updated_at' => now(),
                ]);
            }
        }
    }
}
