.class Lcom/miui/simlock/activity/SimLockPinActivity$d;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/simlock/activity/SimLockPinActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field final synthetic b:Lcom/miui/simlock/activity/SimLockPinActivity;


# direct methods
.method private constructor <init>(Lcom/miui/simlock/activity/SimLockPinActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity$d;->b:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/miui/simlock/activity/SimLockPinActivity$d;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/simlock/activity/SimLockPinActivity;Ljava/lang/String;Lcom/miui/simlock/activity/SimLockPinActivity$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/simlock/activity/SimLockPinActivity$d;-><init>(Lcom/miui/simlock/activity/SimLockPinActivity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3

    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity$d;->b:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-static {p1}, Lcom/miui/simlock/activity/SimLockPinActivity;->m0(Lcom/miui/simlock/activity/SimLockPinActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/simlock/activity/SimLockPinActivity$d;->b:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-static {v1}, Lcom/miui/simlock/activity/SimLockPinActivity;->n0(Lcom/miui/simlock/activity/SimLockPinActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/simlock/c;->g(Landroid/content/Context;I)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/simlock/activity/SimLockPinActivity;->C0(Lcom/miui/simlock/activity/SimLockPinActivity;Z)Z

    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity$d;->b:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-static {p1}, Lcom/miui/simlock/activity/SimLockPinActivity;->y0(Lcom/miui/simlock/activity/SimLockPinActivity;)I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity$d;->b:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-static {p1}, Lcom/miui/simlock/activity/SimLockPinActivity;->y0(Lcom/miui/simlock/activity/SimLockPinActivity;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity$d;->b:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-static {p1}, Lcom/miui/simlock/activity/SimLockPinActivity;->B0(Lcom/miui/simlock/activity/SimLockPinActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimLockPinActivity::SetIccLockEnabled::enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimLockPinActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity$d;->b:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-static {v0}, Lcom/miui/simlock/activity/SimLockPinActivity;->m0(Lcom/miui/simlock/activity/SimLockPinActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/simlock/activity/SimLockPinActivity$d;->b:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-static {v1}, Lcom/miui/simlock/activity/SimLockPinActivity;->n0(Lcom/miui/simlock/activity/SimLockPinActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/simlock/activity/SimLockPinActivity$d;->a:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lcom/miui/simlock/c;->r(Landroid/content/Context;ZILjava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected b(Ljava/lang/Integer;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_4

    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity$d;->b:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-static {p1}, Lcom/miui/simlock/activity/SimLockPinActivity;->o0(Lcom/miui/simlock/activity/SimLockPinActivity;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity$d;->b:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-static {p1}, Lcom/miui/simlock/activity/SimLockPinActivity;->B0(Lcom/miui/simlock/activity/SimLockPinActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity$d;->b:Lcom/miui/simlock/activity/SimLockPinActivity;

    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity$d;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/simlock/activity/SimLockPinActivity;->p0(Lcom/miui/simlock/activity/SimLockPinActivity;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity$d;->b:Lcom/miui/simlock/activity/SimLockPinActivity;

    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity$d;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/simlock/activity/SimLockPinActivity;->q0(Lcom/miui/simlock/activity/SimLockPinActivity;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity$d;->b:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-static {p1}, Lcom/miui/simlock/activity/SimLockPinActivity;->m0(Lcom/miui/simlock/activity/SimLockPinActivity;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity$d;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/simlock/activity/SimLockPinActivity$d;->b:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-static {v2}, Lcom/miui/simlock/activity/SimLockPinActivity;->n0(Lcom/miui/simlock/activity/SimLockPinActivity;)I

    move-result v2

    const/16 v3, 0xa

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity$d;->b:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-static {p1}, Lcom/miui/simlock/activity/SimLockPinActivity;->o0(Lcom/miui/simlock/activity/SimLockPinActivity;)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity$d;->b:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-static {p1}, Lcom/miui/simlock/activity/SimLockPinActivity;->m0(Lcom/miui/simlock/activity/SimLockPinActivity;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity$d;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/simlock/activity/SimLockPinActivity$d;->b:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-static {v2}, Lcom/miui/simlock/activity/SimLockPinActivity;->n0(Lcom/miui/simlock/activity/SimLockPinActivity;)I

    move-result v2

    const/16 v3, 0xb

    :goto_0
    invoke-static {p1, v0, v2, v1, v3}, Lcom/miui/simlock/c;->q(Landroid/content/Context;Ljava/lang/String;IZI)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity$d;->b:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-static {p1}, Lcom/miui/simlock/activity/SimLockPinActivity;->o0(Lcom/miui/simlock/activity/SimLockPinActivity;)I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity$d;->b:Lcom/miui/simlock/activity/SimLockPinActivity;

    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity$d;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/miui/simlock/activity/SimLockPinActivity;->q0(Lcom/miui/simlock/activity/SimLockPinActivity;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity$d;->b:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-static {p1}, Lcom/miui/simlock/activity/SimLockPinActivity;->m0(Lcom/miui/simlock/activity/SimLockPinActivity;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity$d;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/simlock/activity/SimLockPinActivity$d;->b:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-static {v2}, Lcom/miui/simlock/activity/SimLockPinActivity;->n0(Lcom/miui/simlock/activity/SimLockPinActivity;)I

    move-result v2

    const/16 v3, 0xc

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity$d;->b:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity$d;->b:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/miui/simlock/activity/SimLockPinActivity;->r0(Lcom/miui/simlock/activity/SimLockPinActivity;I)I

    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity$d;->b:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-static {p1, v2}, Lcom/miui/simlock/activity/SimLockPinActivity;->s0(Lcom/miui/simlock/activity/SimLockPinActivity;Z)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity$d;->b:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "sim_lock_enable"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_6

    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity$d;->b:Lcom/miui/simlock/activity/SimLockPinActivity;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/miui/simlock/activity/SimLockPinActivity;->z0(Lcom/miui/simlock/activity/SimLockPinActivity;I)I

    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity$d;->b:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-static {p1, v1}, Lcom/miui/simlock/activity/SimLockPinActivity;->s0(Lcom/miui/simlock/activity/SimLockPinActivity;Z)V

    :goto_2
    return-void

    :cond_6
    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity$d;->b:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setResult(I)V

    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity$d;->b:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/simlock/activity/SimLockPinActivity$d;->a([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/simlock/activity/SimLockPinActivity$d;->b(Ljava/lang/Integer;)V

    return-void
.end method
