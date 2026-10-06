.class final La8/s0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La8/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field public static final a:La8/s0$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:La8/s0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La8/s0$b;

    invoke-direct {v0}, La8/s0$b;-><init>()V

    sput-object v0, La8/s0$b;->a:La8/s0$b;

    new-instance v0, La8/s0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La8/s0;-><init>(Lbk/g;)V

    sput-object v0, La8/s0$b;->b:La8/s0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()La8/s0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, La8/s0$b;->b:La8/s0;

    return-object v0
.end method
