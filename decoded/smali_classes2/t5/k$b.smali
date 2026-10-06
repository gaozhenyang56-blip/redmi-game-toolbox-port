.class public abstract Lt5/k$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt5/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt5/k$b$a;
    }
.end annotation


# static fields
.field public static final b:Lt5/k$b$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lt5/k$b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lt5/k$b$a;-><init>(Lbk/g;)V

    sput-object v0, Lt5/k$b;->b:Lt5/k$b$a;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lt5/k$b;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lt5/k$b;->a:I

    return v0
.end method

.method public abstract b()I
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lt5/k$b;->a:I

    return-void
.end method
