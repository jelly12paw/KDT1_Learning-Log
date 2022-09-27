from multiprocessing import context
from django.shortcuts import render
import random

# Create your views here.
def base(request):
    return render(request, "base.html")


def is_odd_even(request, nums):

    if nums == 0:
        nums_result = "ZERO"
    elif nums % 2 == 0:
        nums_result = "EVEN"
    else:
        nums_result = "ODD"

    context = {
        "nums": nums,
        "nums_result": nums_result,
    }

    return render(request, "is_odd_even.html", context)


def calculate(request, num1, num2):

    context = {
        "num1": num1,
        "num2": num2,
    }

    return render(request, "calculate.html", context)


def in_past(request):
    return render(request, "in_past.html")


def out_past(request):
    name1 = request.GET.get("name1")
    jobs = [
        "Lazy Farmer",
        "Rich Jobless",
        "Poor Doctor",
        "Clever Teacher",
        "Stupid Driver",
        "Strong Princess",
        "Forever alone Prince",
    ]
    job = random.sample(jobs, 1)
    context = {
        "name1": name1,
        "job": job,
    }

    return render(request, "out_past.html", context)


def kr_lip_in(request):
    return render(request, "kr_lip_in.html")


def kr_lip_out(request):
    pp = request.GET.get("p")
    ww = request.GET.get("w")

    pills = [
        "비타민",
        "마그네슘",
        "오메가3",
        "스피루리나",
        "글루타치온",
        "베타글루칸",
        "밀크시슬",
        "코큐텐",
        "글루타민",
        "카카오닙스",
        "나토키나아제",
        "아르기닌",
    ]

    make_pp = []
    for _ in range(int(pp)):
        make_ww = []
        for _ in range(int(ww)):
            pill = random.choice(pills)
            make_ww.append(pill)
        make_pp.append(make_ww)
    print(make_pp)

    context = {
        "para": make_pp,
    }
    return render(request, "kr_lip_out.html", context)
