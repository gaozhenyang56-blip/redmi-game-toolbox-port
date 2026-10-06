.class final Lt3/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field public static final a:Lt3/a$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lt3/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lt3/a$b;

    invoke-direct {v0}, Lt3/a$b;-><init>()V

    sput-object v0, Lt3/a$b;->a:Lt3/a$b;

    new-instance v0, Lt3/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lt3/a;-><init>(Lbk/g;)V

    sput-object v0, Lt3/a$b;->b:Lt3/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lt3/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lt3/a$b;->b:Lt3/a;

    return-object v0
.end method
