.class public final Lcom/miui/gamebooster/guide/CasualModeGuide$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/guide/CasualModeGuide;->H(Lcom/miui/gamebooster/guide/CasualModeGuide$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 View.kt\nandroidx/core/view/ViewKt$postDelayed$runnable$1\n+ 2 CasualModeGuide.kt\ncom/miui/gamebooster/guide/CasualModeGuide\n*L\n1#1,414:1\n271#2,2:415\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$i;->a:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$i;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
