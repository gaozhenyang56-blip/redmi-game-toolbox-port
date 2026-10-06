.class public Ln1/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/j0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln1/j0<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ln1/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ln1/x;

    invoke-direct {v0}, Ln1/x;-><init>()V

    sput-object v0, Ln1/x;->a:Ln1/x;

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

    invoke-virtual {p0, p1, p2}, Ln1/x;->b(Lo1/c;F)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public b(Lo1/c;F)Landroid/graphics/PointF;
    .locals 0

    invoke-static {p1, p2}, Ln1/p;->e(Lo1/c;F)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
