.class Ls/b$i;
.super Ls/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ls/b;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Landroid/view/View;F)V
    .locals 0

    invoke-virtual {p0, p2}, Lo/e;->a(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    return-void
.end method
