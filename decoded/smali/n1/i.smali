.class public Ln1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/j0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln1/j0<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ln1/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ln1/i;

    invoke-direct {v0}, Ln1/i;-><init>()V

    sput-object v0, Ln1/i;->a:Ln1/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lo1/c;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ln1/i;->b(Lo1/c;F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public b(Lo1/c;F)Ljava/lang/Float;
    .locals 0

    invoke-static {p1}, Ln1/p;->g(Lo1/c;)F

    move-result p1

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
