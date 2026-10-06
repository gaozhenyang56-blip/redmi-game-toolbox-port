.class public final Lgk/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgk/a;
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

    invoke-direct {p0}, Lgk/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(III)Lgk/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lgk/a;

    invoke-direct {v0, p1, p2, p3}, Lgk/a;-><init>(III)V

    return-object v0
.end method
