# Farmhouse website - setup (Supabase + GitHub + Vercel)

All three have free plans. Do the steps in this order.

## 1. Supabase (stores text, photos, videos, and the admin login)
1. Create a project at supabase.com (free).
2. SQL Editor -> New query -> paste everything from `supabase.sql` -> Run.
3. Authentication -> Users -> Add user -> enter the client's email + a strong password (tick "Auto confirm").
4. Authentication -> Sign In / Providers (or Settings) -> turn OFF "Allow new users to sign up". Important: otherwise strangers could create accounts and edit the site.
5. Project Settings -> API: copy the **Project URL** and the **anon public key**.
6. Open `index.html`, find `PASTE_SUPABASE_URL` and `PASTE_SUPABASE_ANON_KEY` (near the bottom) and paste your two values. (The anon key is meant to be public; the rules in step 2 protect the data.)

## 2. GitHub
1. Create an account and a new repository (e.g. `farmhouse-site`).
2. "Add file" -> "Upload files" -> upload `index.html` and the `img` folder -> Commit.

## 3. Vercel
1. Sign in at vercel.com with GitHub -> Add New -> Project -> import `farmhouse-site`.
2. Framework preset: **Other**. Leave build settings empty. Deploy.
3. You get a free address like `farmhouse-site.vercel.app`. Add your own domain under Settings -> Domains.

## Using it
- Open the site, scroll to the footer, click **Admin**, sign in with the email/password from Supabase.
- A green bar appears at the top: **Edit site** -> make changes -> **Publish changes**. Everyone sees them after publishing.
- Photos and videos go to Supabase Storage (free plan: 1 GB total, 50 MB per file).
- To change the farm name or default text in the page code, edit `index.html` on GitHub; Vercel redeploys automatically.
