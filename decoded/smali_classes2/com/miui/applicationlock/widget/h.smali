.class public final synthetic Lcom/miui/applicationlock/widget/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/miui/applicationlock/widget/MiuiKeyBoardView;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/applicationlock/widget/MiuiKeyBoardView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/applicationlock/widget/h;->a:Lcom/miui/applicationlock/widget/MiuiKeyBoardView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/h;->a:Lcom/miui/applicationlock/widget/MiuiKeyBoardView;

    invoke-static {v0, p1}, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->b(Lcom/miui/applicationlock/widget/MiuiKeyBoardView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
