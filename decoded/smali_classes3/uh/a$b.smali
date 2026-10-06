.class public Luh/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luh/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "b"
.end annotation


# instance fields
.field public final a:Lsh/e;

.field public final b:Luh/a$a;


# direct methods
.method protected constructor <init>(Lsh/e;Luh/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luh/a$b;->a:Lsh/e;

    iput-object p2, p0, Luh/a$b;->b:Luh/a$a;

    return-void
.end method
