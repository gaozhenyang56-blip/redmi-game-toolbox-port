.class public final Lb9/f$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb9/f$a;
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

    invoke-direct {p0}, Lb9/f$a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lb9/f$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    sget-object p1, Lb9/f$a;->e:Lb9/f$a;

    goto :goto_0

    :cond_0
    sget-object p1, Lb9/f$a;->d:Lb9/f$a;

    goto :goto_0

    :cond_1
    sget-object p1, Lb9/f$a;->c:Lb9/f$a;

    goto :goto_0

    :cond_2
    sget-object p1, Lb9/f$a;->b:Lb9/f$a;

    :goto_0
    return-object p1
.end method
