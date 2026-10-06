.class Lcom/miui/antivirus/ui/MainActivityView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/ui/MainActivityView;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antivirus/ui/MainActivityView;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/ui/MainActivityView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/ui/MainActivityView$b;->a:Lcom/miui/antivirus/ui/MainActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MainActivityView$b;->a:Lcom/miui/antivirus/ui/MainActivityView;

    invoke-static {v0}, Lcom/miui/antivirus/ui/MainActivityView;->c(Lcom/miui/antivirus/ui/MainActivityView;)Lcom/miui/antivirus/ui/MainContentFrame;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/antivirus/ui/MainContentFrame;->s(F)V

    return-void
.end method
