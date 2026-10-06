.class public final Lx4/w1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lx4/w1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx4/w1;

    invoke-direct {v0}, Lx4/w1;-><init>()V

    sput-object v0, Lx4/w1;->a:Lx4/w1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Z
    .locals 1
    const/4 v0, 0x0
    return v0
.end method
