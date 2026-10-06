.class public final synthetic Lcom/miui/networkassistant/ui/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/miui/networkassistant/ui/widget/CardsView;

.field public final synthetic b:Lbk/w;

.field public final synthetic c:Lbk/w;

.field public final synthetic d:Lbk/w;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/networkassistant/ui/widget/CardsView;Lbk/w;Lbk/w;Lbk/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/widget/a;->a:Lcom/miui/networkassistant/ui/widget/CardsView;

    iput-object p2, p0, Lcom/miui/networkassistant/ui/widget/a;->b:Lbk/w;

    iput-object p3, p0, Lcom/miui/networkassistant/ui/widget/a;->c:Lbk/w;

    iput-object p4, p0, Lcom/miui/networkassistant/ui/widget/a;->d:Lbk/w;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/widget/a;->a:Lcom/miui/networkassistant/ui/widget/CardsView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/widget/a;->b:Lbk/w;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/widget/a;->c:Lbk/w;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/widget/a;->d:Lbk/w;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/miui/networkassistant/ui/widget/CardsView;->b(Lcom/miui/networkassistant/ui/widget/CardsView;Lbk/w;Lbk/w;Lbk/w;Landroid/animation/ValueAnimator;)V

    return-void
.end method
