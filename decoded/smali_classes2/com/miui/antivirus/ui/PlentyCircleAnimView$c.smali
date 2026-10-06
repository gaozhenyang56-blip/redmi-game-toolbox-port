.class Lcom/miui/antivirus/ui/PlentyCircleAnimView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/ui/PlentyCircleAnimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/util/Random;

.field private final b:[F


# direct methods
.method public constructor <init>([F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView$c;->a:Ljava/util/Random;

    iput-object p1, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView$c;->b:[F

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 5

    iget-object p1, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView$c;->b:[F

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView$c;->b:[F

    array-length v0, v0

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView$c;->a:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    float-to-double v1, v0

    const-wide v3, 0x3fc999999999999aL    # 0.2

    cmpg-double v3, v1, v3

    if-gez v3, :cond_1

    const v0, 0x3e4ccccd    # 0.2f

    goto :goto_1

    :cond_1
    const-wide v3, 0x3fe6666666666666L    # 0.7

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    const v0, 0x3f333333    # 0.7f

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView$c;->b:[F

    aput v0, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
