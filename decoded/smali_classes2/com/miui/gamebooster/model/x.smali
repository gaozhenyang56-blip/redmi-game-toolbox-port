.class public Lcom/miui/gamebooster/model/x;
.super Lcom/miui/gamebooster/model/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/model/x$a;
    }
.end annotation


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0e021c

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/model/f;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Lt5/b;
    .locals 1

    new-instance v0, Lcom/miui/gamebooster/model/x$a;

    invoke-direct {v0, p0, p1}, Lcom/miui/gamebooster/model/x$a;-><init>(Lcom/miui/gamebooster/model/x;Landroid/view/View;)V

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/x;->d:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/x;->d:Ljava/lang/String;

    return-void
.end method
