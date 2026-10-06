.class public Ln1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/j0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln1/j0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ln1/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ln1/o;

    invoke-direct {v0}, Ln1/o;-><init>()V

    sput-object v0, Ln1/o;->a:Ln1/o;

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

    invoke-virtual {p0, p1, p2}, Ln1/o;->b(Lo1/c;F)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public b(Lo1/c;F)Ljava/lang/Integer;
    .locals 0

    invoke-static {p1}, Ln1/p;->g(Lo1/c;)F

    move-result p1

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
