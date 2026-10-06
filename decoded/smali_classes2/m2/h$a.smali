.class public Lm2/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm2/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field final synthetic c:Lm2/h;


# direct methods
.method public constructor <init>(Lm2/h;)V
    .locals 0

    iput-object p1, p0, Lm2/h$a;->c:Lm2/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
