.class final Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Lak/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lak/l<",
            "Ljava/lang/Float;",
            "Loj/t;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:J


# direct methods
.method public constructor <init>(Landroid/view/View;Lak/l;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lak/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lak/l<",
            "-",
            "Ljava/lang/Float;",
            "Loj/t;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pageView"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buryPoint"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$b;->a:Lak/l;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->INSTANCE:Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;

    invoke-static {p1}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->access$getCurrentTime(Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$b;->b:J

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p1, p0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$b;->a:Lak/l;

    sget-object v0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->INSTANCE:Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;

    invoke-static {v0}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->access$getCurrentTime(Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$b;->b:J

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->access$toStayTime(Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;J)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Lak/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
