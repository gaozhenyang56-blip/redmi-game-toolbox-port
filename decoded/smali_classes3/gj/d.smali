.class public Lgj/d;
.super Lgj/a;
.source "SourceFile"


# instance fields
.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lgj/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgj/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lgj/d;->d:Ljava/lang/String;

    return-void
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Lgj/d;->e:I

    return-void
.end method
