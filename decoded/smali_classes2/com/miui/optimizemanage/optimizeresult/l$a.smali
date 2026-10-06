.class public Lcom/miui/optimizemanage/optimizeresult/l$a;
.super Lcom/miui/optimizemanage/optimizeresult/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/optimizemanage/optimizeresult/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/optimizemanage/optimizeresult/d;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/miui/optimizemanage/optimizeresult/c;I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/optimizemanage/optimizeresult/d;->a(Landroid/view/View;Lcom/miui/optimizemanage/optimizeresult/c;I)V

    instance-of p3, p2, Lcom/miui/optimizemanage/optimizeresult/l;

    if-eqz p3, :cond_0

    check-cast p2, Lcom/miui/optimizemanage/optimizeresult/l;

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/l;->a(Lcom/miui/optimizemanage/optimizeresult/l;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-static {p2}, Lcom/miui/optimizemanage/optimizeresult/l;->a(Lcom/miui/optimizemanage/optimizeresult/l;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
