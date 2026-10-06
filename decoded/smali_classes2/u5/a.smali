.class public Lu5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq6/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq6/b<",
        "Lcom/miui/gamebooster/model/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lu5/a;->a:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .locals 1

    iget-boolean v0, p0, Lu5/a;->a:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0e005e

    goto :goto_0

    :cond_0
    const v0, 0x7f0e005d

    :goto_0
    return v0
.end method

.method public bridge synthetic c(Lq6/i;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, Lcom/miui/gamebooster/model/d;

    invoke-virtual {p0, p1, p2, p3}, Lu5/a;->f(Lq6/i;Lcom/miui/gamebooster/model/d;I)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;I)Z
    .locals 0

    check-cast p1, Lcom/miui/gamebooster/model/d;

    invoke-virtual {p0, p1, p2}, Lu5/a;->g(Lcom/miui/gamebooster/model/d;I)Z

    move-result p1

    return p1
.end method

.method public synthetic e()Landroid/view/View;
    .locals 1

    invoke-static {p0}, Lq6/a;->c(Lq6/b;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public f(Lq6/i;Lcom/miui/gamebooster/model/d;I)V
    .locals 4

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p3}, Lx4/z1;->m(I)I

    move-result p3

    const v0, 0x7f0806a8

    const v1, 0x7f0b0506

    const/16 v2, 0x3e7

    if-ne p3, v2, :cond_0

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "pkg_icon_xspace://"

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "pkg_icon://"

    :goto_0
    invoke-virtual {v2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v1}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget-object v2, Lx4/o0;->f:Lrh/c;

    invoke-virtual {p1}, Lq6/i;->d()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p3, v1, v2, v0}, Lx4/o0;->f(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;Landroid/graphics/drawable/Drawable;)V

    const p3, 0x7f0b0bc9

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/d;->c()Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p3, p2}, Lq6/i;->f(ILjava/lang/String;)Lq6/i;

    return-void
.end method

.method public g(Lcom/miui/gamebooster/model/d;I)Z
    .locals 0

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
