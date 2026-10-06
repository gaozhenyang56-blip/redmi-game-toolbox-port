.class public final Lcom/miui/gamebooster/guide/CasualModeGuide$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/guide/CasualModeGuide;->K(Landroid/view/ViewGroup;ZILak/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 View.kt\nandroidx/core/view/ViewKt$postDelayed$runnable$1\n+ 2 CasualModeGuide.kt\ncom/miui/gamebooster/guide/CasualModeGuide\n*L\n1#1,414:1\n394#2,3:415\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Z

.field final synthetic d:I

.field final synthetic e:Lak/a;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;ZILak/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$j;->a:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$j;->b:Landroid/view/View;

    iput-boolean p3, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$j;->c:Z

    iput p4, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$j;->d:I

    iput-object p5, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$j;->e:Lak/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$j;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$j;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    sget-object v0, Lcom/miui/gamebooster/guide/CasualModeGuide;->a:Lcom/miui/gamebooster/guide/CasualModeGuide;

    iget-object v1, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$j;->a:Landroid/view/ViewGroup;

    iget-boolean v2, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$j;->c:Z

    iget v3, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$j;->d:I

    iget-object v4, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$j;->e:Lak/a;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/gamebooster/guide/CasualModeGuide;->h(Lcom/miui/gamebooster/guide/CasualModeGuide;Landroid/view/ViewGroup;ZILak/a;)V

    return-void
.end method
