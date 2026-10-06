.class public final Lcom/miui/international/bean/GlobalAdBaseBean$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/international/bean/GlobalAdBaseBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public static a(Lcom/miui/international/bean/GlobalAdBaseBean;Landroid/view/View;)V
    .locals 0
    .param p0    # Lcom/miui/international/bean/GlobalAdBaseBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "view"

    invoke-static {p1, p0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Lcom/miui/international/bean/GlobalAdBaseBean;)Z
    .locals 1
    .param p0    # Lcom/miui/international/bean/GlobalAdBaseBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-interface {p0}, Lcom/miui/international/bean/GlobalAdBaseBean;->getStatus()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(Lcom/miui/international/bean/GlobalAdBaseBean;)V
    .locals 0
    .param p0    # Lcom/miui/international/bean/GlobalAdBaseBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static d(Lcom/miui/international/bean/GlobalAdBaseBean;)V
    .locals 1
    .param p0    # Lcom/miui/international/bean/GlobalAdBaseBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, -0x1

    invoke-interface {p0, v0}, Lcom/miui/international/bean/GlobalAdBaseBean;->setStatus(I)V

    return-void
.end method
