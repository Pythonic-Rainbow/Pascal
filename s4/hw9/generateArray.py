import random, string, asyncio
task = []

target = input('Input target name ')
with open('array.list', 'w') as file:
        rx = random.randrange(32767)
        for i in range(32767):
            task.append(''.join(random.choices(string.ascii_uppercase + string.digits, k=10)))
        task[rx] = target
        for i in task:
            file.write(i+'\n')
        print(f'{0} is at {1}', target, rx)