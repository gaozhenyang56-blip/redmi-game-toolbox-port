.class Lo4/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo4/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Z

.field final synthetic d:Lo4/a;


# direct methods
.method constructor <init>(Lo4/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo4/a$b;->d:Lo4/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo4/a$b;->a:Ljava/util/List;

    iput-object p2, p0, Lo4/a$b;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lo4/a$b;)Z
    .locals 0

    iget-boolean p0, p0, Lo4/a$b;->c:Z

    return p0
.end method

.method static synthetic b(Lo4/a$b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lo4/a$b;->c:Z

    return p1
.end method


# virtual methods
.method public c(Lo4/a$a;)V
    .locals 1

    iget-object v0, p0, Lo4/a$b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string v0, "BinderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceCCCCConnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lo4/a$b;->d:Lo4/a;

    invoke-static {p1}, Lo4/a;->a(Lo4/a;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lo4/a$b;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo4/a$c;

    if-eqz p1, :cond_1

    iput-object p2, p1, Lo4/a$c;->e:Landroid/os/IBinder;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo4/a$c;->c:Z

    iget-object v0, p1, Lo4/a$c;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo4/a$b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo4/a$a;

    iget-object v3, p0, Lo4/a$b;->d:Lo4/a;

    invoke-static {v3, v2, p1, p2}, Lo4/a;->b(Lo4/a;Lo4/a$a;Lo4/a$c;Landroid/os/IBinder;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lo4/a$b;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_1
    iget-object p1, p0, Lo4/a$b;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    const-string p1, "BinderManager"

    const-string p2, "onServiceCCCCConnected set isServiceNotAvailable to false"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lo4/a$b;->c:Z

    :cond_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDDDDDisconnected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BinderManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lo4/a$b;->c:Z

    iget-object p1, p0, Lo4/a$b;->d:Lo4/a;

    invoke-static {p1}, Lo4/a;->a(Lo4/a;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lo4/a$b;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo4/a$c;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p1, Lo4/a$c;->e:Landroid/os/IBinder;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lo4/a$c;->c:Z

    :cond_0
    return-void
.end method
