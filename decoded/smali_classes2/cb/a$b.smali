.class public Lcb/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcb/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcb/a$b;->a:I

    iput v0, p0, Lcb/a$b;->b:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget v0, p0, Lcb/a$b;->b:I

    iput v0, p0, Lcb/a$b;->a:I

    iput p1, p0, Lcb/a$b;->b:I

    return-void
.end method
