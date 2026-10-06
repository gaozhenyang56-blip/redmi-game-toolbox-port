.class public Lh2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lm2/f;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lh2/c;->a:Ljava/lang/String;

    iput p2, p0, Lh2/c;->e:I

    iput p3, p0, Lh2/c;->f:I

    iput-object p4, p0, Lh2/c;->g:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lh2/c;->k:Z

    iput-boolean p5, p0, Lh2/c;->h:Z

    iput-boolean p6, p0, Lh2/c;->i:Z

    iput-boolean p7, p0, Lh2/c;->j:Z

    iget-object p1, p0, Lh2/c;->a:Ljava/lang/String;

    invoke-static {p1}, Lm2/f;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lh2/c;->b:Ljava/lang/String;

    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->getNetworkCountryCode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lh2/c;->c:Ljava/lang/String;

    iget-object p1, p0, Lh2/c;->a:Ljava/lang/String;

    invoke-static {p1}, Lm2/f;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lh2/c;->l:Ljava/lang/String;

    invoke-direct {p0}, Lh2/c;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lh2/c;->c:Ljava/lang/String;

    const-string v1, "62"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh2/c;->b:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh2/c;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh2/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lh2/c;->d:Ljava/lang/String;

    :cond_1
    return-void
.end method
