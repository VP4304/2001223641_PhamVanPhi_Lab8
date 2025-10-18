<?php

namespace App\Http\Controllers;

use App\Models\Student;

class StudentController extends Controller
{
    public function index()
    {
        // Lấy danh sách sinh viên kèm số lượng và danh sách môn học chi tiết
        $students = Student::with('courses')   // load danh sách môn học
                           ->withCount('courses') // đếm số môn học
                           ->get();

        return view('students.index', compact('students'));
    }
}
