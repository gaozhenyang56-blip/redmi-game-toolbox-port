.class La7/o$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La7/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field final synthetic f:La7/o;


# direct methods
.method private constructor <init>(La7/o;)V
    .locals 0

    iput-object p1, p0, La7/o$e;->f:La7/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(La7/o;La7/o$a;)V
    .locals 0

    invoke-direct {p0, p1}, La7/o$e;-><init>(La7/o;)V

    return-void
.end method


# virtual methods
.method public a(IZLjava/lang/String;I)V
    .locals 0

    iput p1, p0, La7/o$e;->a:I

    iput-boolean p2, p0, La7/o$e;->d:Z

    iput p4, p0, La7/o$e;->b:I

    iput-object p3, p0, La7/o$e;->c:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, La7/o$e;->e:Z

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    iget-object p1, p0, La7/o$e;->f:La7/o;

    invoke-static {p2}, Lcom/miui/gamebooster/service/IGameBoosterWindow$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/gamebooster/service/IGameBoosterWindow;

    move-result-object p2

    iput-object p2, p1, La7/o;->c:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    iget-boolean p1, p0, La7/o$e;->e:Z

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, La7/o$e;->f:La7/o;

    iget-object v0, p1, La7/o;->c:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    iget v1, p0, La7/o$e;->a:I

    iget-boolean v2, p0, La7/o$e;->d:Z

    iget-object v3, p0, La7/o$e;->c:Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p0, La7/o$e;->b:I

    invoke-interface/range {v0 .. v5}, Lcom/miui/gamebooster/service/IGameBoosterWindow;->D4(IZLjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, La7/o$e;->f:La7/o;

    const/4 v0, 0x0

    iput-object v0, p1, La7/o;->c:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    return-void
.end method
