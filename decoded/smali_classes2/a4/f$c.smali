.class final La4/f$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La4/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field public static final a:La4/f$c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:La4/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La4/f$c;

    invoke-direct {v0}, La4/f$c;-><init>()V

    sput-object v0, La4/f$c;->a:La4/f$c;

    new-instance v0, La4/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La4/f;-><init>(Lbk/g;)V

    sput-object v0, La4/f$c;->b:La4/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()La4/f;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, La4/f$c;->b:La4/f;

    return-object v0
.end method
