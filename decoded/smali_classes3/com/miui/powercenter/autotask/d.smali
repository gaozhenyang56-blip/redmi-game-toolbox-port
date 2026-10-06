.class public Lcom/miui/powercenter/autotask/d;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/autotask/d$c;,
        Lcom/miui/powercenter/autotask/d$b;,
        Lcom/miui/powercenter/autotask/d$d;
    }
.end annotation


# instance fields
.field private a:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Lcom/miui/powercenter/autotask/d$d;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Lcom/miui/powercenter/autotask/d$d;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lcom/miui/powercenter/autotask/d$c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/miui/powercenter/autotask/d$c;-><init>(Lcom/miui/powercenter/autotask/d$a;)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/d;->a:Ljava/util/SortedSet;

    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lcom/miui/powercenter/autotask/d$b;

    invoke-direct {v1, v2}, Lcom/miui/powercenter/autotask/d$b;-><init>(Lcom/miui/powercenter/autotask/d$a;)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/d;->b:Ljava/util/SortedSet;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/powercenter/autotask/d;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powercenter/autotask/d;->d:Z

    invoke-direct {p0, p1}, Lcom/miui/powercenter/autotask/d;->g(Landroid/content/Context;)V

    return-void
.end method

.method private a(Lcom/miui/powercenter/autotask/AutoTask;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/powercenter/autotask/d;->c(Lcom/miui/powercenter/autotask/AutoTask;)Lcom/miui/powercenter/autotask/d$d;

    move-result-object v0

    const-string v1, "battery_level_down"

    invoke-virtual {p1, v1}, Lcom/miui/powercenter/autotask/AutoTask;->hasCondition(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/miui/powercenter/autotask/d;->a:Ljava/util/SortedSet;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/powercenter/autotask/d;->a:Ljava/util/SortedSet;

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const-string v1, "battery_level_up"

    invoke-virtual {p1, v1}, Lcom/miui/powercenter/autotask/AutoTask;->hasCondition(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/powercenter/autotask/d;->b:Ljava/util/SortedSet;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/powercenter/autotask/d;->b:Ljava/util/SortedSet;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private c(Lcom/miui/powercenter/autotask/AutoTask;)Lcom/miui/powercenter/autotask/d$d;
    .locals 3

    new-instance v0, Lcom/miui/powercenter/autotask/d$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/powercenter/autotask/d$d;-><init>(Lcom/miui/powercenter/autotask/d$a;)V

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->getId()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/miui/powercenter/autotask/d$d;->a:J

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->getStarted()Z

    move-result v1

    iput-boolean v1, v0, Lcom/miui/powercenter/autotask/d$d;->c:Z

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->getRestoreLevel()I

    move-result v1

    iput v1, v0, Lcom/miui/powercenter/autotask/d$d;->d:I

    const-string v1, "battery_level_down"

    invoke-virtual {p1, v1}, Lcom/miui/powercenter/autotask/AutoTask;->hasCondition(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {p1, v1}, Lcom/miui/powercenter/autotask/AutoTask;->getCondition(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/miui/powercenter/autotask/d$d;->b:I

    goto :goto_1

    :cond_0
    const-string v1, "battery_level_up"

    invoke-virtual {p1, v1}, Lcom/miui/powercenter/autotask/AutoTask;->hasCondition(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private d(Landroid/content/Context;IZ)V
    .locals 5

    iget v0, p0, Lcom/miui/powercenter/autotask/d;->c:I

    if-eq v0, p2, :cond_2

    const/4 v0, 0x0

    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/d;->a:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/powercenter/autotask/d$d;

    iget v3, v2, Lcom/miui/powercenter/autotask/d$d;->b:I

    if-lt v3, p2, :cond_1

    iget v4, p0, Lcom/miui/powercenter/autotask/d;->c:I

    if-ge v3, v4, :cond_1

    iget-wide v2, v2, Lcom/miui/powercenter/autotask/d$d;->a:J

    invoke-static {p1, v2, v3, v0}, Lcom/miui/powercenter/autotask/b;->e(Landroid/content/Context;JZ)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/powercenter/autotask/d;->b:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/powercenter/autotask/d$d;

    iget v3, v2, Lcom/miui/powercenter/autotask/d$d;->b:I

    iget v4, p0, Lcom/miui/powercenter/autotask/d;->c:I

    if-le v3, v4, :cond_1

    if-gt v3, p2, :cond_1

    const/4 v3, -0x1

    if-eq v4, v3, :cond_1

    iget-wide v2, v2, Lcom/miui/powercenter/autotask/d$d;->a:J

    invoke-static {p1, v2, v3, v0}, Lcom/miui/powercenter/autotask/b;->e(Landroid/content/Context;JZ)V

    goto :goto_1

    :cond_1
    iput p2, p0, Lcom/miui/powercenter/autotask/d;->c:I

    :cond_2
    iget-boolean p2, p0, Lcom/miui/powercenter/autotask/d;->d:Z

    if-eq p2, p3, :cond_5

    if-eqz p3, :cond_4

    iget-object p2, p0, Lcom/miui/powercenter/autotask/d;->a:Ljava/util/SortedSet;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/autotask/d$d;

    iget-boolean v1, v0, Lcom/miui/powercenter/autotask/d$d;->c:Z

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/miui/powercenter/autotask/d$d;->d:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-wide v0, v0, Lcom/miui/powercenter/autotask/d$d;->a:J

    invoke-static {p1, v0, v1, v2}, Lcom/miui/powercenter/autotask/b;->e(Landroid/content/Context;JZ)V

    goto :goto_2

    :cond_4
    iput-boolean p3, p0, Lcom/miui/powercenter/autotask/d;->d:Z

    :cond_5
    return-void
.end method

.method private e(Landroid/content/Context;J)V
    .locals 1

    new-instance p1, Lcom/miui/powercenter/autotask/d$d;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/miui/powercenter/autotask/d$d;-><init>(Lcom/miui/powercenter/autotask/d$a;)V

    iput-wide p2, p1, Lcom/miui/powercenter/autotask/d$d;->a:J

    iget-object p2, p0, Lcom/miui/powercenter/autotask/d;->a:Ljava/util/SortedSet;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/miui/powercenter/autotask/d;->b:Ljava/util/SortedSet;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private f(Landroid/content/Context;J)V
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/miui/powercenter/autotask/g;->h(Landroid/content/Context;J)Lcom/miui/powercenter/autotask/AutoTask;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/powercenter/autotask/d;->e(Landroid/content/Context;J)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/miui/powercenter/autotask/AutoTask;->getEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lcom/miui/powercenter/autotask/d$d;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/miui/powercenter/autotask/d$d;-><init>(Lcom/miui/powercenter/autotask/d$a;)V

    iput-wide p2, p1, Lcom/miui/powercenter/autotask/d$d;->a:J

    iget-object p2, p0, Lcom/miui/powercenter/autotask/d;->a:Ljava/util/SortedSet;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/miui/powercenter/autotask/d;->b:Ljava/util/SortedSet;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/powercenter/autotask/d;->a(Lcom/miui/powercenter/autotask/AutoTask;)V

    :goto_0
    return-void
.end method

.method private g(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lme/w;->j(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/miui/powercenter/autotask/d;->c:I

    invoke-static {p1}, Lcom/miui/powercenter/autotask/g;->i(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    new-instance v0, Lcom/miui/powercenter/autotask/AutoTask;

    invoke-direct {v0, p1}, Lcom/miui/powercenter/autotask/AutoTask;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v0}, Lcom/miui/powercenter/autotask/AutoTask;->getEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/powercenter/autotask/d;->a(Lcom/miui/powercenter/autotask/AutoTask;)V

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public b(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    const-string p1, "AutoTaskBatteryReceiver info begin"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Prev percent "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/miui/powercenter/autotask/d;->c:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Level down size "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/powercenter/autotask/d;->a:Ljava/util/SortedSet;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/d;->a:Ljava/util/SortedSet;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const-string v0, " restore level "

    const-string v1, " started "

    const-string v2, " level "

    const-string v3, "id "

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/powercenter/autotask/d$d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p3, Lcom/miui/powercenter/autotask/d$d;->a:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Lcom/miui/powercenter/autotask/d$d;->b:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p3, Lcom/miui/powercenter/autotask/d$d;->c:Z

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p3, Lcom/miui/powercenter/autotask/d$d;->d:I

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Level up size "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/powercenter/autotask/d;->b:Ljava/util/SortedSet;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/d;->b:Ljava/util/SortedSet;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/powercenter/autotask/d$d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p3, Lcom/miui/powercenter/autotask/d$d;->a:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p3, Lcom/miui/powercenter/autotask/d$d;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p3, Lcom/miui/powercenter/autotask/d$d;->c:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p3, Lcom/miui/powercenter/autotask/d$d;->d:I

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p1, "end"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public h(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-static {p1, p0, v0, v1}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.miui.powercenter.action.TASK_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.miui.powercenter.action.TASK_DELETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p1}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lr0/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public i(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {p1}, Lr0/a;->b(Landroid/content/Context;)Lr0/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lr0/a;->e(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v0, "status"

    const/4 v2, -0x1

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "level"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "scale"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    mul-int/lit8 v3, v3, 0x64

    div-int/2addr v3, p2

    const/4 p2, 0x2

    if-eq v0, p2, :cond_0

    const/4 p2, 0x5

    if-ne v0, p2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    invoke-direct {p0, p1, v3, v1}, Lcom/miui/powercenter/autotask/d;->d(Landroid/content/Context;IZ)V

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.miui.powercenter.action.TASK_UPDATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v0, -0x1

    const-string v2, "id"

    invoke-virtual {p2, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-ltz p2, :cond_4

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/powercenter/autotask/d;->f(Landroid/content/Context;J)V

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.miui.powercenter.action.TASK_DELETE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "ids"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object p2

    if-eqz p2, :cond_4

    array-length v0, p2

    if-lez v0, :cond_4

    :goto_0
    array-length v0, p2

    if-ge v1, v0, :cond_4

    aget-wide v2, p2, v1

    invoke-direct {p0, p1, v2, v3}, Lcom/miui/powercenter/autotask/d;->e(Landroid/content/Context;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method
