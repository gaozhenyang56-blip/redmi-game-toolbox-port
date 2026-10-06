.class La7/i$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La7/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field final synthetic f:La7/i;


# direct methods
.method private constructor <init>(La7/i;)V
    .locals 0

    iput-object p1, p0, La7/i$c;->f:La7/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(La7/i;La7/i$a;)V
    .locals 0

    invoke-direct {p0, p1}, La7/i$c;-><init>(La7/i;)V

    return-void
.end method


# virtual methods
.method public a(IZLjava/lang/String;I)V
    .locals 0

    iput p1, p0, La7/i$c;->a:I

    iput-boolean p2, p0, La7/i$c;->d:Z

    iput p4, p0, La7/i$c;->b:I

    iput-object p3, p0, La7/i$c;->c:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, La7/i$c;->e:Z

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    iget-object p1, p0, La7/i$c;->f:La7/i;

    invoke-static {p2}, Lcom/miui/gamebooster/service/IGameBoosterWindow$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/gamebooster/service/IGameBoosterWindow;

    move-result-object p2

    iput-object p2, p1, La7/i;->g:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    iget-boolean p1, p0, La7/i$c;->e:Z

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, La7/i$c;->f:La7/i;

    iget-object v0, p1, La7/i;->g:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    iget v1, p0, La7/i$c;->a:I

    iget-boolean v2, p0, La7/i$c;->d:Z

    iget-object v3, p0, La7/i$c;->c:Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p0, La7/i$c;->b:I

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

    iget-object p1, p0, La7/i$c;->f:La7/i;

    const/4 v0, 0x0

    iput-object v0, p1, La7/i;->g:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    return-void
.end method
