.class public final La5/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lbk/g;)V
    .locals 0

    invoke-direct {p0}, La5/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView;I)V
    .locals 1
    .param p1    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "imageView"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    goto :goto_1

    :cond_0
    const p2, 0x7f080518

    goto :goto_0

    :cond_1
    const p2, 0x7f08051a

    goto :goto_0

    :cond_2
    const p2, 0x7f080519

    goto :goto_0

    :cond_3
    const p2, 0x7f08051b

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void
.end method
