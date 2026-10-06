.class public Lob/d;
.super Lob/a;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Lob/a;-><init>()V

    iput-boolean p1, p0, Lob/d;->a:Z

    iput p2, p0, Lob/d;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method
