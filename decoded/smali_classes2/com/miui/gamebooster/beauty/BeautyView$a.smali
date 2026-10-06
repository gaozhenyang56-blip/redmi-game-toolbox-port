.class Lcom/miui/gamebooster/beauty/BeautyView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/beauty/BeautyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/beauty/BeautyView;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/beauty/BeautyView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/beauty/BeautyView$a;->a:Lcom/miui/gamebooster/beauty/BeautyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyView$a;->a:Lcom/miui/gamebooster/beauty/BeautyView;

    invoke-static {v0}, Lcom/miui/gamebooster/beauty/BeautyView;->a(Lcom/miui/gamebooster/beauty/BeautyView;)Lcom/miui/gamebooster/beauty/BeautySmallView;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gamebooster/beauty/BeautyView$a;->a:Lcom/miui/gamebooster/beauty/BeautyView;

    invoke-static {v2}, Lcom/miui/gamebooster/beauty/BeautyView;->b(Lcom/miui/gamebooster/beauty/BeautyView;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/miui/gamebooster/beauty/BeautyView;->c(Lcom/miui/gamebooster/beauty/BeautyView;Landroid/view/View;Landroid/view/View;Z)V

    return-void
.end method
