.class public Lcom/miui/antivirus/model/f;
.super Lcom/miui/antivirus/model/a;
.source "SourceFile"


# instance fields
.field private i:I


# direct methods
.method public constructor <init>(Lcom/miui/antivirus/model/a$a;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/model/a;-><init>()V

    iput-object p1, p0, Lcom/miui/antivirus/model/a;->d:Lcom/miui/antivirus/model/a$a;

    iput-object p2, p0, Lcom/miui/antivirus/model/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/antivirus/model/a;->c:Ljava/lang/String;

    iput p4, p0, Lcom/miui/antivirus/model/f;->i:I

    return-void
.end method
