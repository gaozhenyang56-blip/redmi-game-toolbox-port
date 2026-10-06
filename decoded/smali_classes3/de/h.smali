.class public final Lde/h;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JJLcom/miui/powercenter/powerui/ChargingHotWarningActivity;)V
    .locals 1
    .param p5    # Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p5, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/CountDownTimer;-><init>(JJ)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lde/h;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private final a(I)V
    .locals 2

    iget-object v0, p0, Lde/h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;->m0(I)V

    nop

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lde/h;->a(I)V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    long-to-int p1, p1

    div-int/lit16 p1, p1, 0x3e8

    invoke-direct {p0, p1}, Lde/h;->a(I)V

    return-void
.end method
