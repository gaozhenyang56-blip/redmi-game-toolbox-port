.class Ls/c$c;
.super Ls/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ls/c;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Landroid/view/View;F)V
    .locals 0

    invoke-virtual {p0, p2}, Lo/j;->a(F)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    return-void
.end method
