.class public Lcom/miui/antivirus/result/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antivirus/result/a$a;
    }
.end annotation


# instance fields
.field protected mCardType:Lcom/miui/antivirus/result/a$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBaseCardType()Lcom/miui/antivirus/result/a$a;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/result/a;->mCardType:Lcom/miui/antivirus/result/a$a;

    return-object v0
.end method

.method public setBaseCardType(Lcom/miui/antivirus/result/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/a;->mCardType:Lcom/miui/antivirus/result/a$a;

    return-void
.end method
