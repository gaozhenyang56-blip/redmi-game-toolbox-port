.class final Lik/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lik/e;


# static fields
.field public static final a:Lik/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lik/b;

    invoke-direct {v0}, Lik/b;-><init>()V

    sput-object v0, Lik/b;->a:Lik/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lqj/w;->a:Lqj/w;

    return-object v0
.end method
