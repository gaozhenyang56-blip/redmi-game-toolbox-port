.class public final Ldk/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ldk/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldk/a;

    invoke-direct {v0}, Ldk/a;-><init>()V

    sput-object v0, Ldk/a;->a:Ldk/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ldk/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ldk/c<",
            "Ljava/lang/Object;",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ldk/b;

    invoke-direct {v0}, Ldk/b;-><init>()V

    return-object v0
.end method
