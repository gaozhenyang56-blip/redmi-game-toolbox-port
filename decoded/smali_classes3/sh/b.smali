.class public Lsh/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsh/b$a;
    }
.end annotation


# instance fields
.field private final a:Lsh/b$a;

.field private final b:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lsh/b$a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsh/b;->a:Lsh/b$a;

    iput-object p2, p0, Lsh/b;->b:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lsh/b;->b:Ljava/lang/Throwable;

    return-object v0
.end method
