.class public Ldj/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ldj/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldj/b;

    invoke-direct {v0}, Ldj/b;-><init>()V

    sput-object v0, Ldj/b;->a:Ldj/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ldj/b;
    .locals 1

    sget-object v0, Ldj/b;->a:Ldj/b;

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Ldj/c;->b(Ljava/lang/String;)V

    return-void
.end method
