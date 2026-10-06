.class public Ll2/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;

.field final synthetic d:Ll2/a;


# direct methods
.method public constructor <init>(Ll2/a;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ll2/a$a;->d:Ll2/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ll2/a$a;->a:Ljava/lang/String;

    iput p3, p0, Ll2/a$a;->b:I

    iput-object p4, p0, Ll2/a$a;->c:Ljava/lang/String;

    return-void
.end method
