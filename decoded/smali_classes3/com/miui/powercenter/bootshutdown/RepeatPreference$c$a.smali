.class Lcom/miui/powercenter/bootshutdown/RepeatPreference$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/powercenter/bootshutdown/a$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/bootshutdown/RepeatPreference$c;->b([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[I

.field final synthetic b:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

.field final synthetic c:Lcom/miui/powercenter/bootshutdown/RepeatPreference$c;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/bootshutdown/RepeatPreference$c;[ILcom/miui/powercenter/bootshutdown/RepeatPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference$c$a;->c:Lcom/miui/powercenter/bootshutdown/RepeatPreference$c;

    iput-object p2, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference$c$a;->a:[I

    iput-object p3, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference$c$a;->b:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/powercenter/bootshutdown/a;I)V
    .locals 1

    iget-object p1, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference$c$a;->a:[I

    aget p1, p1, p2

    if-eqz p1, :cond_4

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference$c$a;->b:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    invoke-static {p1}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->i(Lcom/miui/powercenter/bootshutdown/RepeatPreference;)V

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference$c$a;->b:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    invoke-static {p1}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->g(Lcom/miui/powercenter/bootshutdown/RepeatPreference;)Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    move-result-object p1

    new-instance p2, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    const/16 v0, 0x1f

    invoke-direct {p2, v0}, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;-><init>(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference$c$a;->b:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    invoke-static {p1}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->g(Lcom/miui/powercenter/bootshutdown/RepeatPreference;)Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->j(Z)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference$c$a;->b:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    invoke-static {p1}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->g(Lcom/miui/powercenter/bootshutdown/RepeatPreference;)Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    move-result-object p1

    new-instance p2, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    const/16 v0, 0x7f

    invoke-direct {p2, v0}, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;-><init>(I)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference$c$a;->b:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    invoke-static {p1}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->g(Lcom/miui/powercenter/bootshutdown/RepeatPreference;)Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    move-result-object p1

    new-instance p2, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;-><init>(I)V

    :goto_0
    invoke-virtual {p1, p2}, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->i(Lcom/miui/powercenter/bootshutdown/DaysOfWeek;)V

    :goto_1
    iget-object p1, p0, Lcom/miui/powercenter/bootshutdown/RepeatPreference$c$a;->b:Lcom/miui/powercenter/bootshutdown/RepeatPreference;

    invoke-static {p1}, Lcom/miui/powercenter/bootshutdown/RepeatPreference;->h(Lcom/miui/powercenter/bootshutdown/RepeatPreference;)V

    :goto_2
    return-void
.end method

.method public onDismiss()V
    .locals 0

    return-void
.end method

.method public onShow()V
    .locals 0

    return-void
.end method
